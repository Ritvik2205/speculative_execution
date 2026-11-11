.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -9
and ebx, 15
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or sil, bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
bt cx, si
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test al, -81
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
or cl, 30
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
or ax, -4210
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
