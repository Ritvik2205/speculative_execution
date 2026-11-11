.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
not rsi
cmovnl rdi, rax
xor rsi, -117
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rax]
xor bl, -27
xor dl, 40
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edi
cmovnb edx, esi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
and dl, -59 # instrumentation
cmovbe cx, bx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rbx, rbx
xor rdi, rdx
bt bx, di
and ecx, edi
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
btr si, 52
test sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
