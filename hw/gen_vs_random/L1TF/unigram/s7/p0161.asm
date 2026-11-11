.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
lea cx, qword ptr [rbx + rax + 7]
cbw
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
mov ecx, eax
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], di
xor eax, esi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 10
xor sil, dl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
