.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 13090
and rbx, 65
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
or dl, bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
jmp .bb_0.1
.bb_0.1:
test ax, di
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
or si, 94
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
bt cx, 22
or al, bl
and sil, cl
not al
or rax, 1461812833
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
