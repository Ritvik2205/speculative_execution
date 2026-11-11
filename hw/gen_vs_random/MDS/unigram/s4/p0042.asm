.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, rdi
and bl, -5 # instrumentation
cmovnl dx, cx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
xor edx, -13
not rdx
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and dl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
cmovnz rsi, rax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
bt ecx, edi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
cmovle di, ax
test al, -81
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
