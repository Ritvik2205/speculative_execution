.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
lea rdx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
add al, bl
lea di, qword ptr [rbx]
btr rdx, 161
btr dx, ax
add al, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
cmovs ecx, ebx
or rcx, -10
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
and bl, cl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
xchg dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
