.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
btr ebx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
cmovo edx, edi
or sil, -78
btc ebx, edi
or bl, al
cmovb rsi, rax
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
xor rbx, 89
test bl, bl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
or di, 0b1000000000000000 # instrumentation
bsf di, di
or al, 54
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
