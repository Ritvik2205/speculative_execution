.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rcx]
xor dl, -82
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], eax
or rbx, 18
xor ebx, 87
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
lea rsi, qword ptr [rcx + rdi + 99]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rax]
add bl, -19 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
add dl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
add cx, si
setle dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
