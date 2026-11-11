.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
and rcx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rcx]
and dil, cl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and sil, dil
and rax, 1250429750
xor al, 34
and dl, -73
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], eax
and al, 35
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
bts rdx, rsi
cmovnz rsi, rdx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
bts rdi, 130
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
