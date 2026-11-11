.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rbx, rsi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 86
test bl, -114
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], si
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -83
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
or al, 16
and rax, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
or si, si
bt bx, si
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
test si, 79
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and bl, dil
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
bts rbx, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
