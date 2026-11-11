.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -99
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
add dl, -16 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
setnp cl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
sbb ecx, 49
cmp dl, -115
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
