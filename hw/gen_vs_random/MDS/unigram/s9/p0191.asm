.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
or al, cl
test al, cl
xor dl, sil
cmovnle ecx, esi
xor cl, sil
jmp .bb_0.1
.bb_0.1:
cmovb rbx, rcx
and rax, rsi
cmovnle rdx, rax
or al, -75
xor sil, 110
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rbx
not bl
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
xor dl, 34
and bl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
xor bl, -27
cmovs rsi, rdi
xor bl, al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
