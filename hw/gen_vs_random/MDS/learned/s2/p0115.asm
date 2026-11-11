.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and al, dl
and rsi, 70
or rax, -285849275
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
test ax, 5320
cmovl rax, rbx
cmovp dx, cx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ebx
xor bx, di
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 23
cmovs ebx, edx
bt dx, 60
btr rbx, 96
or al, -48
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
xor rdi, -50
and bl, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
