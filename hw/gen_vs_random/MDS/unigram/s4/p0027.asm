.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], cx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
cmovns rcx, rax
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and al, -23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
or sil, sil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
cmovo rcx, rsi
and bl, 8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
test dl, sil
not ecx
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 27
xor dl, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
