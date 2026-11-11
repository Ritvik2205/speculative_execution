.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
bt esi, esi
cmovz dx, cx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
cmovnbe dx, bx
cmovnz rdx, rax
and al, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
cmovnle ecx, edi
cmovns ecx, ebx
cmovnz rdi, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
