.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 41
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
cmovp cx, dx
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
cmovno rsi, rsi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 82
or cx, -42
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
and dl, -103 # instrumentation
cmovbe dx, dx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
bts dx, 50
test dil, -51
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ebx
bts rax, 77
and dl, -14 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
