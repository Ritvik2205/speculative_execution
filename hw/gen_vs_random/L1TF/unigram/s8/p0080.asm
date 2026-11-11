.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
adc dil, 120
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 9
add sil, sil
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
test dl, al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 34
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
add rdx, 81
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
