.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
adc rax, -1877286258
xchg dil, cl
lea ecx, qword ptr [rcx]
and bl, cl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29
lea ax, qword ptr [rsi + rcx + 40317]
sbb dl, dl
add al, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
neg ecx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
cmovs ecx, ebx
bt di, di
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
or rcx, -10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
