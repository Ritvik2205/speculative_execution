.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
cmp dl, 119
jns .bb_0.1
jmp .exit_0
.bb_0.1:
btc eax, 28
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
imul rdi
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 66
and sil, al
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
add cl, 32 # instrumentation
cmovnbe rax, rcx
cmp di, 7
test rdx, 1657596343
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
