.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or ax, -20176
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
cmovno cx, si
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 85
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -124
test dil, -51
btc rax, 59
cmovb rbx, rcx
xor sil, sil
bts rcx, 9
cmovb si, ax
or si, -12
or sil, al
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
