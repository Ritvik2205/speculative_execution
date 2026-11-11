.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
or dil, cl
btr si, si
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -85
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rcx]
or bl, bl
and dl, 17 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and sil, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
or dl, -31
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
test rbx, 59
or al, 16
cmovnle rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
