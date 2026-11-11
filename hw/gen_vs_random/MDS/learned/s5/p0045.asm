.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, ax
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
jmp .bb_0.1
.bb_0.1:
test al, cl
btr dx, si
not sil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and dil, 125
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
or al, -78
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test ecx, -1843375753
and bx, 19
or ax, -4210
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
