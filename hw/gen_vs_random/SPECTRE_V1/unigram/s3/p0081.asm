.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
add al, -27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 47
btr rsi, rbx
add eax, ebx
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
sub rdx, 78
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdx]
setno dil
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
add al, -121 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
and al, al
dec rdx
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 642565565
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
