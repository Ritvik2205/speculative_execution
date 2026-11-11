.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, dl
btr ebx, eax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -83
and al, -54
and bl, 109 # instrumentation
cmovs si, cx
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 72
cmovnbe ecx, esi
test rax, 1978892575
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and bl, 68
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rax]
cmovnb edi, esi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 33
or cx, dx
not sil
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
