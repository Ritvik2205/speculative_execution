.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
cmovb rsi, rbx
add dl, -121 # instrumentation
setno dl
test edi, ecx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
btr ax, di
lea edi, qword ptr [rdx + rdx]
or eax, 848176907
cmp cx, 19
inc si
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
adc rax, rdi
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
xor sil, -33
cmp rax, -1365488374
add cl, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
