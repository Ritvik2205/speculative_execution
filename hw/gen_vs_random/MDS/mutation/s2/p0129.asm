.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, rax
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
and cl, 122 # instrumentation
cmovnb rcx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
cmovnb edx, edx
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
and al, -105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
btc bx, 179
and cl, 40
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
not al
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
cmovnle rcx, rax
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
cmovnbe dx, si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and dl, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
