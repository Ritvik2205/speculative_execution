.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -1005
test al, -7
or bl, -62
or bl, cl
jmp .bb_0.1
.bb_0.1:
not dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
not dl
or ax, 127
cmovnbe rdi, rsi
xor bl, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
