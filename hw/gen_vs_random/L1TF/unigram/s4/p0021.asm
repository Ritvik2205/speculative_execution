.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
movsx rcx, cx
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rsi
xor cx, 113
btc eax, 220
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
btr esi, eax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
sub dx, 34
lea rax, qword ptr [rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
