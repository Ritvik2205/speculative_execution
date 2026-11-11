.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb cx, bx
btc ax, 65
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
cmovb ax, di
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
inc dl
inc sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 53
dec eax
setno al
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
lea edi, qword ptr [rdi + rdx + 91]
add cl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
movsx ebx, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
