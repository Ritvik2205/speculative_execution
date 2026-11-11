.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
add rax, 1503210561
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add al, -27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 37
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, -29 # instrumentation
lea rax, qword ptr [rdx + rdx + 58362]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 73254857
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rbx]
cmp dil, 11
jno .bb_0.2
jmp .exit_0
.bb_0.2:
add rcx, rsi
or sil, 3
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], dx
test eax, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
