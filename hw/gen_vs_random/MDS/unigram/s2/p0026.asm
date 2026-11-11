.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, -12
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ebx
bts ax, 22
cmovnl di, cx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
xor al, bl
btc rdx, rcx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
or ax, 16560
xor cl, al
btc esi, esi
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
not rax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
bts ecx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
