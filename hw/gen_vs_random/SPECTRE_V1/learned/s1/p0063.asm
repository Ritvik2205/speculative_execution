.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdx
sbb esi, -4
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 83
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
sbb rdx, 69
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
lea rbx, qword ptr [rdi]
and dl, al
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
xor rdi, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
