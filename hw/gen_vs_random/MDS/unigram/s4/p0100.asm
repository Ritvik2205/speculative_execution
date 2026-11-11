.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, rdi
not al
cmovz rbx, rax
test al, -59
btc cx, 104
and rdx, 10
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
and dl, -107 # instrumentation
cmovz rdx, rbx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 29
btc di, 33
not ecx
jmp .bb_0.1
.bb_0.1:
cmovbe rbx, rax
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
cmovns di, cx
or di, -18
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 74
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 74
and rcx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rcx]
and bx, ax
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
