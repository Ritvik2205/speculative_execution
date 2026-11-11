.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
test cx, 401
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
bts dx, 50
btc edx, esi
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], esi
and bl, 68
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edx
jmp .bb_0.1
.bb_0.1:
xor dx, 10
cmovp esi, esi
test al, al
or ax, -20176
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rsi
xor al, 9
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
and di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
