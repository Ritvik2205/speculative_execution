.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
or al, -17
or ax, -23697
jmp .bb_0.3
.bb_0.3:
and rsi, 16
or dil, dl
btc rcx, 79
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
not cl
jmp .bb_0.4
.bb_0.4:
or dl, bl
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
