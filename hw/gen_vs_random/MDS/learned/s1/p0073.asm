.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
bts edx, 189
test al, sil
test eax, -675944960
xor bl, dil
and cl, dil
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
jmp .bb_0.1
.bb_0.1:
test rax, 1978892575
or al, 16
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
test rdx, 17
or bx, 86
and rax, 627810357
and ax, 13090
and al, -8
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
