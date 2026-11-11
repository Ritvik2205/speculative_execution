.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, cx
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
test al, cl
xor ecx, 8
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
cmovnl rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and cl, 49 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
test edi, eax
and rsi, rsi
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
or al, al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
btc dx, dx
jmp .bb_0.2
.bb_0.2:
and bl, 6 # instrumentation
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
or al, 24
cmovl di, cx
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], -41
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
test rax, -1579405415
and eax, 561041355
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
test dl, bl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
cmovo rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
