.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22368
cmovnp bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
not di
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
and cl, -101
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and ax, 15401
and dil, 32
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 8
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 49
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
cmovs edx, edi
bt esi, 6
cmovz edx, edi
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
or dl, dl
cmovnle rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
