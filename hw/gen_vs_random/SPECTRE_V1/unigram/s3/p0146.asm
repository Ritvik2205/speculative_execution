.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
dec dl
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
lea eax, qword ptr [rax + rdi]
xchg eax, ebx
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 12
mul dl
test dl, -36
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
add al, -76 # instrumentation
cmovnbe ax, ax
js .bb_0.1
jmp .exit_0
.bb_0.1:
and cx, 40
or eax, -1641258390
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
bts ecx, 68
add dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
