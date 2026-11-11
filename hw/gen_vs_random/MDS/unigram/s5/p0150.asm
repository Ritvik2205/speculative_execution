.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz dx, bx
or al, al
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
not edx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and al, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 7
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
cmovno rax, rdx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
xor sil, dl
and rsi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rsi]
and dx, cx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
