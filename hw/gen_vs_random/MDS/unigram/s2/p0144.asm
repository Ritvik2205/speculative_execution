.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
test al, 91
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
and dil, -99 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
test rdx, 37
test rax, 1949278494
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
test rbx, rbx
btr si, 52
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
xor dil, -70
and cl, 78 # instrumentation
cmovs dx, bx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 59
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
or sil, cl
bt ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
