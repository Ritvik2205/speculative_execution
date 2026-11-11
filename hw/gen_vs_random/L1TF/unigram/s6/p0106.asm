.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ecx, 58
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
sub sil, al
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], esi
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
add bl, -92 # instrumentation
setnz bl
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
add al, -117 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], esi
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
not cl
sbb al, 61
btr eax, 47
or dl, -67
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
