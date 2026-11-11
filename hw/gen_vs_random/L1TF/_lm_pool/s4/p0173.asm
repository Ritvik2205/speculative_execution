.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and sil, 93
lea ebx, qword ptr [rax + rax + 18]
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rbx]
and al, al
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmp dl, sil
and al, -68
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 16
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 1
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
