.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
or al, -61
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
or al, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
test al, dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
cmovle di, ax
cmovnbe rdx, rsi
or sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
