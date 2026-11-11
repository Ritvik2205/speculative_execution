.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test sil, 87
add cl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
mov si, 9258
mov bl, bl
setnb cl
or sil, 3
cmovnbe si, cx
mov bl, bl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
cmovno ax, ax
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
btc dx, 69
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
