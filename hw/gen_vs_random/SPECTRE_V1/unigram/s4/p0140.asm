.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 17976
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
adc dl, dl
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 52
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
add dl, 6 # instrumentation
adc rbx, 60
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
add bl, 7 # instrumentation
cmovnl edi, ebx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 73
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
dec bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
test di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
