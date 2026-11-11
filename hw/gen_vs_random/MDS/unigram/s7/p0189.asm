.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 125 # instrumentation
cmovo cx, bx
cmovnle rbx, rdx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
xor dl, 8
not al
bts si, bx
and cx, -8
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
jmp .bb_0.1
.bb_0.1:
or rbx, rdx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
cmovl rdi, rsi
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
xor sil, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
