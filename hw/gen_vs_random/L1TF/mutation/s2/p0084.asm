.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs ecx, ebx
neg ecx
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
add al, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
sbb dl, dl
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
and bl, cl
lea ax, qword ptr [rsi + rcx + 40317]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29
or rcx, -10
bt di, di
xchg dil, cl
adc rax, -457629677
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
lea ecx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
