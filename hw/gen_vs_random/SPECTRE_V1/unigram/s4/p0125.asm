.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, dl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
mov ebx, 78
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
test bl, dl
and rcx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
or rdi, 68
and sil, cl
cmovno rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
