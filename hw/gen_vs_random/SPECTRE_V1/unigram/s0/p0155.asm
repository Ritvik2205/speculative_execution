.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -58 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
bt ebx, esi
sub bl, dil
and dl, -92
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
add bl, -47 # instrumentation
setbe bl
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, -114
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 44
and rsi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 91
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -88
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
