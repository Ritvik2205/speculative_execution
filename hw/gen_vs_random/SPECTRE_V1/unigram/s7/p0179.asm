.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cl, al
setbe sil
add sil, -68
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
sub cl, sil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
xchg rdx, rax
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
mov rcx, 77
and dl, dil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
bt rsi, 64
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 127
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
