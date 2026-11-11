.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -49 # instrumentation
cmovno cx, bx
cmovnb dx, cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
cmovl rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
cmovb rbx, rdi
and dil, al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 59
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
cmovl ax, bx
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
sub ecx, ebx
xor eax, 1170472196
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 46
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
and al, -56 # instrumentation
cmovl rdx, rax
test sil, 25
and dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
