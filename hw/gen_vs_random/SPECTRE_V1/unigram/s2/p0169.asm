.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
or dil, dl
add cl, 99 # instrumentation
sets cl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 64
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 17
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
adc rbx, 100
lea rax, qword ptr [rdi]
setno bl
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
setno sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
