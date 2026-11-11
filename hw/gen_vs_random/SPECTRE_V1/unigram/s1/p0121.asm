.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 68
or ax, 0b1000000000000000 # instrumentation
bsr di, ax
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 20
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
mov al, sil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rcx + rax + 30]
or cl, al
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 97
cmp cl, dl
lea dx, qword ptr [rcx + rsi + 3]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
sbb cl, sil
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
