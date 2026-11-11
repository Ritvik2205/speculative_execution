.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 48
cmovl rcx, rax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
and al, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
xor sil, sil
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
and dil, dl
and rdi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
xor edx, 22
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edi
btc rdi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], -75
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
and dl, -73 # instrumentation
cmovns rbx, rsi
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
cmovl eax, eax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
bt eax, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
