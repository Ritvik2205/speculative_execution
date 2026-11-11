.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle si, dx
test ebx, -2015966884
cmovs rbx, rsi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
bts rdx, 200
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -83
jmp .bb_0.1
.bb_0.1:
not rdi
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rdx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor dil, -124
xor edi, 29
and rsi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rsi]
cmovb ax, ax
bts rax, 77
or bl, 43
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
