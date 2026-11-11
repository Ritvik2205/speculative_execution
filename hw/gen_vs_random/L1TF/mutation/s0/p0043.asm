.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
neg ecx
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
adc rax, -457629677
bt di, di
lea ecx, qword ptr [rcx]
add al, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
or rcx, -10
xchg dil, cl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29
lea ax, qword ptr [rsi + rcx + 40317]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
and bl, cl
sbb dl, dl
cmovs ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
