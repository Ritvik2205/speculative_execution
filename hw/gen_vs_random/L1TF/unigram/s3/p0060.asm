.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
setb dl
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
add bl, 55 # instrumentation
lea ebx, qword ptr [rsi + rdx + 36]
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
add dl, -122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
add bl, 104 # instrumentation
sbb rbx, 66
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 66
add al, al
cmovbe edi, ecx
xor al, al
xor rdi, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
