.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdi + rdi + 27]
cmovnb rcx, rbx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 92
lea dx, qword ptr [rbx + rax + 33]
setp dl
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
cmovnle rcx, rcx
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 2
add dl, -48 # instrumentation
lea edi, qword ptr [rdi + rbx]
movzx esi, dx
lea rcx, qword ptr [rax + rsi + 61]
bt rdx, rax
lea edi, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
