.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
sub ecx, 94
sets bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovbe esi, edx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
add dl, 117 # instrumentation
sbb rax, rdx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdi
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], cx
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
neg rax
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
setnle dl
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -69
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
