.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rsi, rsi
btr bx, di
and rdi, 64
xor cl, 98
cmovnle rbx, rcx
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
bt eax, edx
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
or bx, 40
and dl, 16 # instrumentation
cmovle edx, edx
test eax, 1287331633
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
