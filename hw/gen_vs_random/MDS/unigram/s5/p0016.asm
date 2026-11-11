.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], edi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
or ebx, ebx
test sil, bl
cmovns esi, esi
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
xor rax, -773894210
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
and rax, rbx
cmovs ebx, eax
bts rax, rdx
and cl, 122 # instrumentation
cmovl ebx, ebx
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 90
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rcx]
and edi, 23
cmovnle cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
